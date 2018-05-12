/**
 *  무비스코어 3D 큐브 스위퍼
 */
   

    var swiper = new Swiper('.swiper-container2', {
      effect: 'cube',
      grabCursor: true,
      cubeEffect: {
        shadow: true,
        slideShadows: true,
        shadowOffset: 20,
        shadowScale: 0.94,
      },
      pagination: {
        el: '.swiper-pagination2',
      },
    });
    