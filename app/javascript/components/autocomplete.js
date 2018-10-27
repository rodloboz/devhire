import autocomplete from 'js-autocomplete';

const handleSelect = function(event, term, item) {
  const path = `${window.location.origin}/developers/?q=${term}`;
  window.location.href = path
}

const autocompleteSearch = function() {
  const skills = JSON.parse(document.querySelector('.form-search').dataset.skills)
  const searchInput = document.getElementById('q');

  if (skills && searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 2,
      source: function(term, suggest){
          term = term.toLowerCase();
          const choices = skills;
          const matches = [];
          for (let i = 0; i < choices.length; i++)
              if (~choices[i].toLowerCase().indexOf(term)) matches.push(choices[i]);
          suggest(matches);
      },
      onSelect: handleSelect
    });
  }
};

export { autocompleteSearch };
