package starter.stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.screenplay.Actor;

import java.util.List;
import java.util.Map;

public class CalculatorStepDefinitions {


    @Given("{actor} a maths student has opened the calculator")
    public void has_opened_the_calculator(Actor actor) {

    }

    @When("{actor} performs/(has performed) the following calculation(s):")
    public void performs_the_following_calculation(Actor actor, List<Map<String,String>> operation) {

    }

    @Then("{actor} should see a result of {string}")
    public void should_see_a_result_of(Actor actor, String expectedResult) {

    }

    @When("{actor} calculates {string}")
    public void calculates(Actor actor, String calculation) {

    }

    @Then("the calculation history should contain:")
    public void the_calculation_history_should_contain(List<Map<String,String>> calculationsHistory) {

    }





}
