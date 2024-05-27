cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  chronic---primary:
    run: chronic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  severe-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: severe-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-monitor---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-monitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: severe-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-score---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-score---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-monitor---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-attendance---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-attendance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-score---primary/output
  obliterative-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: obliterative-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-attendance---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-administration---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: obliterative-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  emphysematous-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: emphysematous-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-administration---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: emphysematous-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-health---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-health---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-tracheobronchitis---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-tracheobronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-health---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-index---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-index---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-tracheobronchitis---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-followup---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-index---primary/output
  monthly-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: monthly-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-followup---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-visit---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-visit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: monthly-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-chest---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-visit---primary/output
  clinical-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: clinical-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-chest---primary/output
  fetid-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: fetid-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: clinical-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-rescue---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-rescue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: fetid-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-default---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-default---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-rescue---primary/output
  zonal-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: zonal-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-default---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-cough---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-cough---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: zonal-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-macleod---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-macleod---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-cough---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-swyerjames---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-swyerjames---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-macleod---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-overlap---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-swyerjames---primary/output
  unilateral-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: unilateral-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-overlap---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-discharge---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-discharge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: unilateral-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  panlobular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: panlobular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-discharge---primary/output
  purulent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: purulent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: panlobular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  occupational-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: occupational-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: purulent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-panacinar---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-panacinar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: occupational-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-unspecified---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-panacinar---primary/output
  asthmatic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: asthmatic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-unspecified---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-supportv---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-supportv---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: asthmatic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-jones---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-jones---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-supportv---primary/output
  irreversible-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: irreversible-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-jones---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-preferred---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-preferred---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: irreversible-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-managem---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-managem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-preferred---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-exacerbation---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-exacerbation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-managem---primary/output
  vesicular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: vesicular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-exacerbation---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-limitation---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-limitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: vesicular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  recurrent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: recurrent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-limitation---primary/output
  toxic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: toxic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: recurrent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  giant-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: giant-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: toxic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-airway---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-airway---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: giant-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  eosinophilic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: eosinophilic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-airway---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-catarrhal---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-catarrhal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: eosinophilic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-issue---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-issue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-catarrhal---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-rehab---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-rehab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-issue---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-notified---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-notified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-rehab---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-bulla---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-bulla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-notified---primary/output
  moderate-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: moderate-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-bulla---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-obstructn---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-obstructn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: moderate-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-phone---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-phone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-obstructn---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-sleep---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-sleep---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-phone---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-confirmed---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-confirmed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-sleep---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-shared---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-shared---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-confirmed---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-appointment---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-appointment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-shared---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-questionnaire---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-questionnaire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-appointment---primary/output
  segmental-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: segmental-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-questionnaire---primary/output
  chemical-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: chemical-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: segmental-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-supprtv---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-supprtv---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: chemical-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-admit---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-admit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-supprtv---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-airflow---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-airflow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-admit---primary/output
  hospital-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: hospital-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-airflow---primary/output
  multidisciplinary-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: multidisciplinary-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: hospital-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-collapse---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-collapse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: multidisciplinary-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  noninfective-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: noninfective-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-collapse---primary/output
  secondary-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: secondary-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: noninfective-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  annual-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: annual-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: secondary-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  atrophic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: atrophic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: annual-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-declined---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: atrophic-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  mixed-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: mixed-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-declined---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-pathway---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-pathway---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: mixed-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-obliteran---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-obliteran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-pathway---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-syndrom---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-syndrom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-obliteran---primary/output
  centrilobular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: centrilobular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-syndrom---primary/output
  patient-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: patient-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: centrilobular-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  copd---primary:
    run: copd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: patient-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-medication---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: copd---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-number---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-number---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-medication---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-deficiency---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-deficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-number---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-quality---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-deficiency---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-service---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-quality---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-message---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-message---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-service---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-nursing---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-nursing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-message---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-place---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-place---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-nursing---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-education---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-place---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-oxygen---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-oxygen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-education---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-assessment---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-oxygen---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-supply---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-supply---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-assessment---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-bronchiectasis---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-bronchiectasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-supply---primary/output
  infective-chronic-obstructive-pulmonary-disease-copd-primary-care---primary:
    run: infective-chronic-obstructive-pulmonary-disease-copd-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-bronchiectasis---primary/output
  chronic-obstructive-pulmonary-disease-copd-primary-care-given---primary:
    run: chronic-obstructive-pulmonary-disease-copd-primary-care-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: infective-chronic-obstructive-pulmonary-disease-copd-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: chronic-obstructive-pulmonary-disease-copd-primary-care-given---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
