const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  mode: 'jit',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/components/**/*.{erb,haml,html,slim,js}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans]
      },
      colors: {
        teal: colors.teal,
        cyan: colors.cyan,
        success: {
          50: '#F0FDF4',
          100: '#E6F7E9',
          400: '#4ADE80',
          500: '#2ECC71',
          600: '#1D976C',
          700: '#186A5B',
          800: '#0F4E47'
        },
        danger: {
          50: '#FEF2F2',
          100: '#FDE6E6',
          400: '#F87171',
          500: '#F55353',
          600: '#D93838',
          700: '#B82222',
          800: '#9B1B1B'
        },
        info: {
          50: '#EFF6FF',
          100: '#E6F7FF',
          400: '#60A5FA',
          500: '#3F8EF7',
          600: '#2F7AE6',
          700: '#1E5FCD',
          800: '#2B3FCC'
        },
        warning: {
          50: '#FEFCE8',
          100: '#FDF8E2',
          400: '#FACC15',
          500: '#F7C914',
          600: '#E5A70E',
          700: '#D58E0B',
          800: '#B86A0D'
        }
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography')
  ]
}
