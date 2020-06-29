using Xamarin.Forms;
using BracePLUS.ViewModels;
using Xamarin.Forms.Xaml;

namespace BracePLUS.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]

    public partial class Interface : ContentPage
    {
        InterfaceViewModel viewModel;

        public Interface()
        {
            InitializeComponent();

            BindingContext = viewModel = new InterfaceViewModel
            {
                Nav = Navigation
            };
        }
    }
}