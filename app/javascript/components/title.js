import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ['cat ?', 'dog ?', 'bird ?', 'boa ?', 'lion ?', 'horse ?'],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
