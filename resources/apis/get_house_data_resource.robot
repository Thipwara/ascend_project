*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}       https://potterapi-fedeperin.vercel.app
${ENDPOINT}       /en/houses
${INDEX}          3

${EXPECTED_HOUSE}         Slytherin
${EXPECTED_EMOJI}         🐍
${EXPECTED_FOUNDER}       Salazar Slytherin
${EXPECTED_ANIMAL}        Snake
${EXPECTED_INDEX}         ${3}

${EXPECTED_ERROR_NOT_FOUND}         Invalid Index
