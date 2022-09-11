# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.1.0/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus_reflex", to: "https://ga.jspm.io/npm:stimulus_reflex@3.5.0-pre9/dist/stimulus_reflex.min.js"
pin "@rails/actioncable", to: "https://ga.jspm.io/npm:@rails/actioncable@7.0.4/app/assets/javascripts/actioncable.esm.js"
pin "cable_ready", to: "https://ga.jspm.io/npm:cable_ready@5.0.0-pre9/dist/cable_ready.min.js"
#pin "cable_ready", to: "https://ga.jspm.io/npm:cable_ready@5.0.0-pre8/javascript/index.js"
pin "morphdom", to: "https://ga.jspm.io/npm:morphdom@2.6.1/dist/morphdom.js"
pin "@fortawesome/fontawesome-free", to: "https://ga.jspm.io/npm:@fortawesome/fontawesome-free@6.2.0/js/all.js"
pin "import", to: "https://ga.jspm.io/npm:import@0.0.6/index.js"
pin "fs", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.26/nodelibs/browser/fs.js"
pin "path", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.26/nodelibs/browser/path.js"
pin "sortablejs", to: "https://ga.jspm.io/npm:sortablejs@1.15.0/modular/sortable.esm.js"
