# Import necessary libraries
import os
from PIL import Image, ImageDraw, ImageFont  # Pillow library for image processing

def generate_professional_profile_pic(output_path='ashnova_global_profile_pic.png'):
    """
    This function generates a professional profile picture for "Ashnova Global".
    It creates a simple image with the company name in a clean font on a professional background.
    
    Parameters:
    - output_path (str): The file path where the image will be saved. Default is 'ashnova_global_profile_pic.png'.
    
    Returns:
    - None: Saves the image to the specified path.
    """
    try:
        # Set image dimensions and colors for a professional look
        width, height = 500, 500  # Square image for profile pics
        background_color = (25, 25, 112)  # Dark blue for a corporate feel
        text_color = (255, 255, 255)  # White text for contrast
        
        # Create a new image
        image = Image.new('RGB', (width, height), background_color)
        draw = ImageDraw.Draw(image)
        
        # Load a professional font (ensure you have a font file, e.g., Arial.ttf)
        # If not, you can download a free font like Roboto from Google Fonts
        try:
            font_path = 'arial.ttf'  # Replace with your font path if needed
            if not os.path.exists(font_path):
                raise FileNotFoundError("Font file not found. Please provide a valid font path.")
            font = ImageFont.truetype(font_path, 60)  # Font size 60 for readability
        except Exception as e:
            print(f"Error loading font: {e}. Using default font.")
            font = ImageFont.load_default()  # Fallback to default font
        
        # Add text to the image
        text = "Ashnova Global"
        text_width, text_height = draw.textsize(text, font=font)  # Get text size
        text_x = (width - text_width) / 2  # Center horizontally
        text_y = (height - text_height) / 2  # Center vertically
        
        draw.text((text_x, text_y), text, font=font, fill=text_color)
        
        # Save the image
        image.save(output_path, 'PNG')
        print(f"Professional profile picture saved successfully at: {output_path}")
    
    except Exception as e:
        print(f"An error occurred: {e}")

# Run the function
if _name_ == "_main_":
    generate_professional_profile_pic()
