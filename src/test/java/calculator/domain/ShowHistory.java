package calculator.domain;

public class ShowHistory {
    private String expression;
    private String result;

    public ShowHistory(String expression, String result) {
        this.expression = expression;
        this.result = result;
    }

    public String getExpression() {
        return expression;
    }

    public String getResult() {
        return result;
    }

    @Override
    public String toString() {
        return "ShowHistory{" +
                "expression='" + expression + '\'' +
                ", result='" + result + '\'' +
                '}';
    }
}
