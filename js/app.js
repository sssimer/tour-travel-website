// Select all elements with the class "zoomImage"
const images = document.querySelectorAll(".zoomimage");

// Loop through each image and add event listeners
images.forEach((image) => {
  image.addEventListener("mouseover", () => {
    image.style.transform = "scale(1.05)"; // Zoom in 5%
  });

  image.addEventListener("mouseout", () => {
    image.style.transform = "scale(1)"; // Reset
  });
});
