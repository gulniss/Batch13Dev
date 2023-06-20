import { LightningElement } from 'lwc';

export default class HW2Looping extends LightningElement {
    animals = ['Lion', 'Tiger', 'Goat', 'Horse', 'Donkey', 'Dog', 'Cat'];

    toyotaCars = [
        {
            Model: "Camry",
            ModelYear: 2021,
            Powertrain: "Gas & Hybrid"
        },
        {
            Model: "Rav4",
            ModelYear: 2022,
            Powertrain: "Plug-In Hybrid"
        },
        {
            Model: "Highlander",
            ModelYear: 2023,
            Powertrain: "Gas"
        }
    ];
}