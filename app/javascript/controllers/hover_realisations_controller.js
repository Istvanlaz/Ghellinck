document.addEventListener('turbolinks:load', () => {
  const categoryImages = document.querySelector('.category_imgs');

  const realisationsDesktop = () => {
    if (categoryImages) {
      const images = Array.from(categoryImages.children);
      const categoryList = document.querySelector('.category_list');
      const categories = Array.from(categoryList.children);

      const setImageOpacity = (image, index) => {
        if (index === 0) {
          image.classList.add('current_slide');
        }
      };
      images.forEach(setImageOpacity);

      const changeImageOpacity = (categoryImages, currentImage, targetImage) => {
        if (currentImage === targetImage) {
          return;
        } else {
          targetImage.classList.add('current_slide');
          targetImage.style.animation = 'catImageAppear 0.35s ease-out';
          currentImage.classList.remove('current_slide');
          currentImage.style.animation = 'catImageFade 0.35s ease-in';
        }
      };

      // moves to the correct image when hovered
      categoryList.addEventListener('mouseover', e => {
        // what indicator is on hover
        const targetCategory = e.target.closest('li');

        if (!targetCategory) return;

        const currentImage = categoryImages.querySelector('.current_slide');

        const targetIndex = categories.findIndex(cat => cat === targetCategory);

        const targetImage = images[targetIndex];

        changeImageOpacity(categoryImages, currentImage, targetImage);
      });
    }
  };

  const realisationsMobile = () => {
    if (categoryImages) {
      const images = Array.from(categoryImages.children);
      const categoryList = document.querySelector('.category_list');
      const categories = Array.from(categoryList.children);

      const setImageOpacity = (image, index) => {
        if (index === 0) {
          image.classList.add('current_slide');
        }
      };
      images.forEach(setImageOpacity);
    }
  };

  if (window.innerWidth < 600) {

    realisationsMobile();

  } else {

    realisationsDesktop();

  }

});

