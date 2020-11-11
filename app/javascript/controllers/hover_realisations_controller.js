document.addEventListener('turbolinks:load', () => {
  const categoryImages = document.querySelector('.category_imgs');

  const realisationsDesktop = () => {
    if (categoryImages) {
      const images = Array.from(categoryImages.children);
      const categories = document.querySelector('.category_list');
      const category = Array.from(categories.children);

      const setImagePosition = (image, index) => {
        image.style.left = 101 * index + '%';
      };
      images.forEach(setImagePosition);

      const moveToImage = (categoryImages, targetImage) => {
        categoryImages.style.transform = 'translateX(-' + targetImage.style.left + ')';
      };

      // // moves to the correct indicator when clicked
      categories.addEventListener('mouseover', e => {
        // what indicator is clicked on
        const targetCategory = e.target.closest('li');

        if (!targetCategory) return;

        const targetIndex = category.findIndex(cat => cat === targetCategory);

        const targetImage = images[targetIndex];

        moveToImage(categoryImages, targetImage);
      });
    }
  };


  if (window.innerWidth < 600) {

    return;

  } else {

    realisationsDesktop();

  }

});

