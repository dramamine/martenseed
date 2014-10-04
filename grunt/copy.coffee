module.exports = 
  default:
    expand: true
    cwd: 'src/assets/'
    src: ['**'] # warning: this copies over the whole lib directory
    dest: './public/'