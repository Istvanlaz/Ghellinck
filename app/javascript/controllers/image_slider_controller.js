document.addEventListener('turbolinks:load', () => {
  const imageSlider = document.querySelector('.image_slider');

  if (imageSlider) {

    const navigationManual = document.querySelector('.navigation-manual');
    const navBtns = Array.from(navigationManual.children);

    var counter = 1;

    navigationManual.addEventListener('click', e => {

      const targetDot = e.target.closest('label');

      if (!targetDot) return;

      const targetId = targetDot.id.split('')[7];

      let stringResponse = targetId;

      let numericalTransformation = parseInt(stringResponse);

      counter = numericalTransformation;

    });

    if (navBtns) {
      setInterval(function(){

        document.getElementById('radio' + counter).checked = true;

        counter++;

        if (counter > 5) {
          counter = 1;
        }

        if (navBtns.nil) { return }

      }, 5000);
    }
  }
});
