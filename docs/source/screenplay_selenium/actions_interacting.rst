Actions for interacting with elements
=====================================

Some of the examples on this page use the
:doc:`google_homepage <page_used_in_examples>` page object.

``screenplay_selenium.actions.click_on``
----------------------------------------

An Action to click on an element

``.element(locator)`` method
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clicks on an element using a locator (usually from a page object).

.. code-block:: python

    from screenplay_selenium.actions import click_on
    from pages.google_homepage import google_homepage

    actor.attempts_to(
        click_on().element(google_homepage.search_box)
    )

    
``.stored_element(id)`` method
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Clicks on an element stored in the ``Actor``'s state identified by the id
passed as the first argument to the method. The element will usually be stored
in the actor's state using one of the ``action_selenium.find_*`` actions.


.. code-block:: python

    from screenplay_selenium.actions import click_on, find_element
    from pages.google_homepage import google_homepage

    actor.attempts_to(
        find_element(google_homepage.search_box).and_store_as('search_box'),
        click_on().stored_element('search_box')
    )

``screenplay_selenium.actions.click_on_sub_element``
----------------------------------------------------

``screenplay_selenium.actions.enter_text``
------------------------------------------

``screenplay_selenium.actions.send_key_to``
-------------------------------------------
