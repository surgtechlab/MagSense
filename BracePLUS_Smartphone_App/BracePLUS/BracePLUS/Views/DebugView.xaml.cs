using System;
using System.Collections.Generic;
using System.Diagnostics;
using BracePLUS.Models;
using BracePLUS.ViewModels;
using Xamarin.Forms;

namespace BracePLUS.Views
{
    public partial class DebugView : ContentPage
    {
        DebugViewModel viewModel;

        public DebugView()
        {
            InitializeComponent();
            BindingContext = viewModel = new DebugViewModel();

            viewModel.RegisterStack(MessageStack);
        }
    }
}
