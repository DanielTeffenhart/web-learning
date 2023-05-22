function calculateSum() {
    let val1 = document.getElementById('a')
    let val2 = document.getElementById('b')
    let totalField = document.getElementById('total')
    let result = parseInt(val1.value) + parseInt(val2.value)
    totalField.innerText = `Total: ${result}`
}