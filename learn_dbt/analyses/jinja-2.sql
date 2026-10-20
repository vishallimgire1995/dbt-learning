{% set apples = ["Gala", "Red Delicious", "Fuji", "McIntosh", "Honeycrisp"] %}
{% for apple in apples %}
  {% if apple != "Fuji" %}
     {{ apple }}
  {% else %}
      I dont like {{apple}}
  {% endif %}
  
{% endfor %}