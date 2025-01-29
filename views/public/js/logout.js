export function logout(){
    fetch('/user/action/logout').then(response => response.json())
    .then(response)
}