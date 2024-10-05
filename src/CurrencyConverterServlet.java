import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;

public class CurrencyConverterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String amountStr = request.getParameter("amount");
        String fromCurrency = request.getParameter("fromCurrency");
        String toCurrency = request.getParameter("toCurrency");

        try {
            // Validate input
            if (amountStr == null || fromCurrency == null || toCurrency == null) {
                throw new IllegalArgumentException("Missing input parameters.");
            }

            double amount = Double.parseDouble(amountStr);
            double result = convertCurrency(amount, fromCurrency, toCurrency);

            // Set the result in the request scope
            request.setAttribute("result", String.format("%.2f %s = %.2f %s", amount, fromCurrency, result, toCurrency));
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid amount. Please enter a valid number.");
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
        }

        // Forward the request to the result JSP page
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    private double convertCurrency(double amount, String fromCurrency, String toCurrency) {
        double exchangeRate = getExchangeRate(fromCurrency, toCurrency);
        return amount * exchangeRate;
    }

    private double getExchangeRate(String fromCurrency, String toCurrency) {
        switch (fromCurrency) {
            case "USD":
                switch (toCurrency) {
                    case "EUR": return 0.85;
                    case "INR": return 74.00;
                    default: return 1.0; // Same currency
                }
            case "EUR":
                switch (toCurrency) {
                    case "USD": return 1.18;
                    case "INR": return 87.00;
                    default: return 1.0; // Same currency
                }
            case "INR":
                switch (toCurrency) {
                    case "USD": return 0.013;
                    case "EUR": return 0.011;
                    default: return 1.0; // Same currency
                }
            default:
                return 1.0; // Unknown currency, return 1.0 (no conversion)
        }
    }
}

