document.addEventListener('turbolinks:load', () => {

  // Retrieve attributes that have to be on a certain page for the js to be launched
  const imageSlider = document.querySelector('.image_slider');
  const navigationManual = document.querySelector('.navigation-manual');

  // If there is an image slider on the page, launch manual counter attribution
  if (imageSlider) {
    const navigationManual = document.querySelector('.navigation-manual');
    const navBtns = Array.from(navigationManual.children);

    // create a counter
    var counter = 1;

    // Create a function that will reattribute the counter if the user clicks on the dots
    navigationManual.addEventListener('click', e => {
      const targetDot = e.target.closest('label');

      if (!targetDot) return;

      const targetId = targetDot.id.split('')[7];

      let numericalTransformation = parseInt(targetId);

      counter = numericalTransformation;
    });
  }

  // Clear interval if it exists within the window function to avoid infinite loops
  if (window.countInterval) {
    clearInterval(window.countInterval);
  }

  // Create an interval that will change the picture displayed by incrementing the counter every 5 seconds
  if (navigationManual) {
    window.countInterval = setInterval(function () {

      const automation = document.getElementById('radio' + counter);

      if (automation) {
        automation.checked = true;
        counter++;

        if (counter > 5) {
          counter = 1;
        }
      }
    }, 5000);
  }

});
