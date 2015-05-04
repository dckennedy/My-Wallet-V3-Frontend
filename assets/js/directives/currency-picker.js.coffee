walletApp.directive('currencyPicker', ($translate, Wallet) ->
  {
    restrict: "E"
    replace: 'false'
    scope: {
      currency: '='
    }
    templateUrl: 'templates/currency-picker.jade'
    link: (scope, elem, attrs) ->
      scope.currencies = Wallet.currencies
            
      scope.didSelect = (item, model) ->
        scope.currency = item
  }
)