document.addEventListener('DOMContentLoaded', () => {
    const guessInput = document.getElementById('guessInput')
    const guessButton = document.getElementById('guessButton')
    const message = document.getElementById('message')
    let randomNumber = Math.floor(Math.random() * 100) + 1
    let attempts = 0

    guessButton.addEventListener('click', () => {
        const userGuess = parseInt(guessInput.value)
        attempts++

        if (isNaN(userGuess) || userGuess < 1 || userGuess > 100) {
            message.textContent = 'Por favor, insira um número válido entre 1 e 100.'
            return
        }

        message.classList.remove('right', 'wrong')
        if (userGuess === randomNumber) {
            message.textContent = `Parabéns! Você acertou o número ${randomNumber} em ${attempts} tentativas.`
            message.classList.add('right')
            randomNumber = Math.floor(Math.random() * 100) + 1
            attempts = 0
        } else if (userGuess < randomNumber) {
            message.textContent = 'Tente um número maior!'
            message.classList.add('wrong')
        } else {
            message.textContent = 'Tente um número menor!'
            message.classList.add('wrong')
        }

        guessInput.value = ''
        guessInput.focus()
    })
})