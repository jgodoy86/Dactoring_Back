Rails.application.routes.draw do


  resources :affiliation_type_levels
  resources :affiliation_types
  resources :procedure_portfolios
  resources :supply_portfolio_details
  resources :supply_portfolios
  resources :master_companies
  resources :branch_offices
  namespace :api, defaults: { format: 'json' } do
    api_version(module: 'v1', path: { value: 'v1' }) do
      
      resources :contacts, except: [:new, :edit, :show]
      resources :companies, except: [:new, :edit, :show]
      resources :contracts, except: [:new, :edit, :show]
      resources :pabillions, except: [:new, :edit, :show]
      resources :attention_areas, except: [:new, :edit, :show]
      resources :patients, except: [:new, :edit, :show]
      resources :medics, except: [:new, :edit, :show]
      resources :specialties, except: [:new, :edit, :show]
      resources :countries, except: [:new, :edit, :show]
      resources :departments, except: [:new, :edit, :show]
      resources :municipalities, except: [:new, :edit, :show]
      resources :neighborhoods, except: [:new, :edit, :show]
      resources :agendas, except: [:new, :edit, :show]
      resources :agenda_programs, except: [:new, :edit, :show]
      resources :anatofarmacologics, except: [:new, :edit, :show]
      resources :active_principles, except: [:new, :edit, :show]
      resources :application_vias, except: [:new, :edit, :show]
      resources :farmaceutic_forms, except: [:new, :edit, :show]
      resources :concentrations, except: [:new, :edit, :show]
      resources :unity_types, except: [:new, :edit, :show]
      resources :unity_measures, except: [:new, :edit, :show]
      resources :supplies, except: [:new, :edit, :show]
      resources :group_products, except: [:new, :edit, :show]
      resources :sub_group_products, except: [:new, :edit, :show]
      resources :brands, except: [:new, :edit, :show]
      resources :storages, except: [:new, :edit, :show]
      resources :products, except: [:new, :edit, :show]
      resources :rip_groups, except: [:new, :edit, :show]
      resources :procedural_types, except: [:new, :edit, :show]
      resources :procedural_finalities, except: [:new, :edit, :show]
      resources :procedures, except: [:new, :edit, :show]
      
    end
  end
  
end
