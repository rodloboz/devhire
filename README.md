We have an app to search and hire developers. The backend, markup and css have been completed but we still need to animate and give some behaviour to the UI with **javascript**.

You can see the final result here :point_right: https://devhire-demo.herokuapp.com/

## Setup

```shell
 git clone git@github.com:rodloboz/devhire.git
 cd devhire
 rails db:create db:migrate db:seed
 rails server
```

Open you browser and visit `localhost:3000`.

## 1 - Animate text with `typed.js`

The landing page, which is rendered by `home#pages`, has a banner with a main heading, a subheading and a search input.

![landing banner](https://github.com/rodloboz/workshops/blob/master/images/01-devhire/Screen%20Shot%202018-11-02%20at%2009.53.35.png?raw=true)

Let's animate the subheading with `typed.js` so that instead of a static sentence, the user will see animated programming language names (`ruby`, `react`, `elixir`, `python`, `swift`) behind the **_devs in the world_**.

**Remember** that no javascript should go in the asset pipeline. We will be coding all javascript in `app/javascript/` and `app/javascript/packs/application.js` is webpack's entry point as required in the `application.html.erb` layout file:

```html
<%= javascript_pack_tag 'application' %>
```

First create a `components` folder inside `app/javascript/`. This is where we will code all of our javascript features.

Create a file `banner.js` inside components. We'll implement the dynamic banner text here. Add `typed.js` to your project using the `yarn` package manager:
```shell
yarn add typed.js
````
Create a function `loadDynamicBannerText` in banner.js.

We have prepared the markup with an element **#js-typed-text** to act as the target for the `Typed` function.

Once you've implemented the feature don't forget to **export** it and then **import** it in `application.js`.

Done? Good! Time to `commit` and `push`.

## 2 - Animate navbar on scroll!
TODO: Instructions

## 3 - Autocomplete suggestions with `js-autocomplete`
TODO: Instructions
## 4 - Bookmarking developers
TODO: Instructions

## 5 - Adding a Datepicker (`flatpickr`)
TODO: Instructions

## 6 - Calculating booking total!
TODO: Instructions

## 7 - Adding a carousel slider (`tiny-slider`)
TODO: Instructions


## 8 - Using a jQuery plugin (`select2`)
TODO: Instructions


## 9 - Adding behaviour to the search subnavbar
TODO: Instructions


## 10 - Filtering results with a range slider (`nouislider`)
TODO: Instructions

