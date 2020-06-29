using System;
using System.Collections.Generic;

using Xamarin.Forms;

using Syncfusion.SfChart.XForms;
using System.Collections.ObjectModel;
using System.Diagnostics;
using BracePLUS.ViewModels;
using BracePLUS.Models;
using System.IO;

namespace BracePLUS.Views
{
    public partial class Visualize : ContentPage
    {
        VisualizeViewModel viewModel;
        public Visualize()
        {
            InitializeComponent();
            BindingContext = viewModel = new VisualizeViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            NodePicker.SelectedIndex = 0;
        }

        void OnPickerSelectedIndexChanged(object sender, EventArgs e)
        {
            var picker = (Picker)sender;
            var index = picker.SelectedIndex + 1;

            if (index != -1) App.NODE_INDEX = index;

            Debug.WriteLine("New picker index: " + index.ToString());
        }

        void OnClearGraphButtonClicked(object sender, EventArgs args)
        {
            viewModel.ExecuteClearDataCommand();
        }

        async void OnSaveButtonClicked(object sender, EventArgs args)
        {
            await viewModel.Save();
        }
    }
}
