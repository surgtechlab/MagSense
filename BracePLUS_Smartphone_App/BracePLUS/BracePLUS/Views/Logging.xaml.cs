using BracePLUS.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BracePLUS.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Logging : ContentPage
    {
        LoggingViewModel viewModel;

        public Logging()
        {
            InitializeComponent();

            BindingContext = viewModel = new LoggingViewModel()
            {
                Navigation = Navigation
            };
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            listView.SelectedItem = null;
        }
    }
}