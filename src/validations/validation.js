const isPresent = function (value) {
    if (typeof value === 'undefined' || value === null) return false
    if (typeof value === 'string' && value.trim().length === 0) return false
    return true
}

const isValidName = function (name) {
    return (/^[a-zA-Z ]{2,30}$/).test(name)
}

const isValidEmail = function (email) {
    return (/^[a-z0-9][a-z0-9-_\.]+@([a-z]|[a-z0-9]?[a-z0-9-]+[a-z0-9])\.[a-z0-9]{2,10}(?:\.[a-z]{2,10})?$/).test(email)
}

const isValidMobile = function (mobile) {
    return (/^((\+91)?|91)?[6-9][0-9]{9}$/).test(mobile);
}

const isValidPassword = function (password) {
    var passRegex = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,15}$/

    return passRegex.test(password)
}

module.exports = { isPresent, isValidName, isValidEmail, isValidMobile, isValidPassword };