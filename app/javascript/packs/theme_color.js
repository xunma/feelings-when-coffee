const checkbox = document.getElementById("theme-color-checkbox");
const color = checkbox.dataset.color;
const navbar = document.querySelector(".border-box");
const uid = checkbox.dataset.user;
const url = `${uid}`



const initializeCheckbox = () => {
  if (color === "#F9DAD7") {
    checkbox.checked = true;
  } else {
    checkbox.checked = false;
  }
}

const changeColor = () => {
  if (checkbox.checked) {
    const newColor = "#F9DAD7" //blue
    navbar.style.backgroundColor = newColor;
    // changeUserColor(newColor);
  } else {
    const newColor = "#C8EAE8";
    navbar.style.backgroundColor = newColor;
    // changeUserColor(newColor);
  }
}

window.onload = initializeCheckbox();
checkbox.addEventListener('change', changeColor);

// const changeUserColor = (color) => {
//   fetch(url, {
//       method: 'patch'
//       body: JSON.stringify ({
//         color: color
//       })
//     })
//     .then(response => response.json())
//     .then((data) => {
//       console.log(data);
//   });
// }


//ok I think I will let it be. There is not much thing I can do
