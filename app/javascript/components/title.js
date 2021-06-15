import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ['🐕','🦝','🐈','🐅','🐆','🐎','🦓','🦌','🐂','🐃','🐄','🐩','🦒','🦔','🦡'],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
