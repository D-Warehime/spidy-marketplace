const negotiate = document.getElementById('negotiation_for_contract')
const showGroup = document.getElementById('show-on-accept')


negotiate.addEventListener("click", (event) => {
  showGroup.classList.toggle('hidden')
});
