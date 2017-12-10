Feature: User can add products to cart
  As a user
  In order for me to buy merchandise
  I would like to be able to add products to my cart

  Background:
    Given the following products exist
      | title   | description   | price |
      | T-shirt | Blue t-shirt  | 50    |
      | Mug     | Nice mug      | 20    |
      | Gloves  | Stay warm     | 25    |

  Scenario:
    When I visit the "Webshop" page
    And I click on "Add to cart" on "T-shirt"
    Then a cart should be created for me
    And the cart should contain "T-shirt"
    Then I should be redirected to the "Webshop" page
    And I should see "T-shirt has been added to cart"

  Scenario: User can add a second product to the cart
    When I visit the "Webshop" page
    Given there is a cart with cart item "Mug"
    And I click on "Add to cart" on "Gloves"
    # Then I should have two products in my cart
    # Then the cart should contain "Mug"
    # And the cart should contain "Gloves"
    # Then I should be redirected to the "Webshop" page
    # And I should see "Gloves has been added to cart"