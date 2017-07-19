var $slider_container = $('.slider-container'),
    $slider = $('.slider');
$slider.slick({
  appendArrows: $slider_container,
  // FontAwesomeのクラスを追加
  prevArrow: '<div class="slider-arrow slider-prev fa fa-angle-left"></div>',
  nextArrow: '<div class="slider-arrow slider-next fa fa-angle-right"></div>',
});
