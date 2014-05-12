SANDWICHES = ['jack.pbandj','jill.pbandj']

rule all:
     input: SANDWICHES

rule clean:
     shell: "rm *.pbandj"

rule peanut_butter_and_jelly_sandwich_recipe:
     input: "kids/{name}", jelly="ingredients/jelly", pb="ingredients/peanut_butter"
     output: "{name}.pbandj"
     shell: "cat {input.pb} {input.jelly} > {output}"
