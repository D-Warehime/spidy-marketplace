const negotiate = document.getElementById('negotiation_for_contract')
const showGroup = document.getElementById('show-on-accept')
// const apply = document.getElementById('apply_for_contract')


negotiate.addEventListener("click", function(event) {
  showGroup.classList.toggle('hidden')
});

//   document.getElementById("contract_price").innerHTML = document.getElementById("price").innerHTML;
// console.log(document.getElementById("contract_price").innerHTML)

// apply.addEventListener("click", function(event) {
//   if (showGroup.classList.contains('hidden')) {
//     // console.log(document.getElementById("contract_price").innerHTML)
//     document.getElementById("contract_payment-unit").innerHTML = document.getElementById("payment-unit").innerHTML;
//     console.log(document.getElementById("contract_payment-unit").innerHTML)
//   };
// });
